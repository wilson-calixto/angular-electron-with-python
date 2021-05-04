from datetime import datetime as dt
import collections as col


class SQLProvider:

    def __init__(self):
        pass

    def dump_models_file(self, models, file_path, timestamp):
        test_sorted = col.OrderedDict()
        parameters_sorted = col.OrderedDict()
        param_test_sorted = col.OrderedDict()
        models_sorted = col.OrderedDict()

        for model in models:
            query = "INSERT INTO Model(id, name, brand, timing) values ({3},'{0}', '{1}', {2});"
            format_query = query.format(model.name, model.brand, model.timing, model.id)
            model_list = models_sorted.get(model.id, [])
            model_list += [format_query]
            if len(model_list) == 1:
                models_sorted[model.id] = model_list

            for test in model.tests:
                if test_sorted.get(test.id, None) is None:
                    query = "INSERT INTO Test(id, name, type) values ({2}, '{0}', {1});"
                    format_query = query.format(test.name, test.type_val, test.id)
                    test_sorted[test.id] = [format_query]

                query = "INSERT INTO ModelTest(id_model, id_test, sequence, activated)"
                query += " values ({0}, {1}, {2}, {3});"
                format_query = query.format(model.id, test.id, test.sequence, int(test.activated))
                model_list += [format_query]
                for param in test.parameters:
                    if parameters_sorted.get(param.id, None) is None:
                        query = "INSERT INTO Parameter(id, name, type) "
                        query += "values ({0}, '{1}', {2});"
                        format_query = query.format(param.id, param.name, param.type)
                        parameters_sorted[param.id] = format_query

                    test_list = param_test_sorted.get(test.id, [])
                    if not param.id in test_list:
                        test_list += [param.id]
                        query = "INSERT INTO TestParameter values ({0}, {1});"
                        format_query = query.format(test.id, param.id)
                        test_sorted[test.id] += [format_query]

                    if len(test_list) == 1:
                        param_test_sorted[test.id] = test_list

                for param in test.parameter_values:
                    query = "INSERT INTO TestParameterValue values({0}, {1}, {2}, '{3}');"
                    format_query = query.format(param.test_id, param.param_id, model.id, str(param.value))
                    model_list += [format_query]

        try:
            #timestamp = dt.now().strftime('%Y-%m-%d_%H-%M-%S')
            fullpath = "{0}/profile_{1}.sql".format(file_path, timestamp)
            with open(fullpath, 'w+') as f:
                for param in parameters_sorted:
                    f.write(parameters_sorted[param]+'\n')

                for test in test_sorted:
                    f.write('\n'.join(test_sorted[test]))
                    f.write('\n')

                for model in models_sorted:
                    f.write('\n'.join(models_sorted[model]))
                    f.write('\n')

                raise Exception('ERROR NO SQL PROVIDER')
        except Exception as e:
            print (str(e))

