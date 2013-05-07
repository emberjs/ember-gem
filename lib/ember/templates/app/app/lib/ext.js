var get = Ember.get,
    fmt = Ember.String.fmt,
    viewProto = Ember.View.proto(), // prepare prototype
    templateForName = viewProto.templateForName;

Ember.View.reopen({
  templateForName: function(name, type) {
    if (!name) return;

    var template = templateForName(name, type);
    if (!template) {
      try {
        template = require(name);
      } catch (e) {
        throw new Ember.Error(fmt('%@ - Unable to find %@ "%@".', [this, type, name]));
      }
    }
    return template;
  }
});
