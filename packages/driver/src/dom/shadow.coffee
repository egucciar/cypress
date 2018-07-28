$ = require("jquery")

$isShadowChild = ($el) -> 
    return $el.get(0).getRootNode().toString() == '[object ShadowRoot]'

$getTrueParent = ($el) ->
  if ($el.is('body,html'))
      return $el.parent()
  if $el.get(0).getRootNode().toString() == '[object ShadowRoot]'
    return $($el.get(0).getRootNode().host);
  else 
    return $el.parent();

getTrueParent = (el) ->
  if el.getRootNode().toString() == '[object ShadowRoot]'
    return el.getRootNode().host;
  else 
    return el.parentNode;

module.exports = {
    $getTrueParent
    getTrueParent
    $isShadowChild
}