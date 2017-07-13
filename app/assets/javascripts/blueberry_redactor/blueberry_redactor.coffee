params = '[name="authenticity_token"]'

$.Redactor.settings =
  plugins: [
    'alignment'
    'clips'
    'inlinestyle'
    'table'
    'iconic2'
    'codemirror'
  ]
  codemirror:
    lineNumbers: true
    lineWrapping: true
    mode: 'htmlmixed'
    theme: 'monokai'
  imageUpload: '/admin/blueberry_redactor/images'
  imageUploadFields: params
  fileUpload: '/admin/blueberry_redactor/files'
  fileUploadFields: params
  lang: 'cs'

window.initRedactor = (el) ->
  el.redactor()

$('.redactor').each ->
  initRedactor $(this)

$(document).on 'cocoon:after-insert', ->
  $('.redactor').each ->
    $this = $(this)
    if $this.attr('style') != 'display: none;'
      initRedactor $this
