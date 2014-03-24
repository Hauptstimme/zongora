# for more details see: http://emberjs.com/guides/models/defining-models/

Zongora.Folder = DS.Model.extend
  parentFolderId: DS.attr 'number'
  name: DS.attr 'string'
