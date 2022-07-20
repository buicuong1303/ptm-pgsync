from pgsync import plugin
class FullnamePlugin(plugin.Plugin):
    name = 'text'

    def transform(self, doc, **kwargs):

        doc['text'] = doc["text"].replace("\n", "\\n")

        return doc