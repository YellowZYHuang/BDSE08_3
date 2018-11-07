(function() {
  var fn = function() {
    Bokeh.safely(function() {
      (function(root) {
        function embed_document(root) {
          
        var docs_json = document.getElementById('1dd6b740-d862-4149-9da7-e1d88235ff6a').textContent;
        var render_items = [{"docid":"80ffb5db-db3a-48e1-89a3-5d3f410ebc64","elementid":"1da653fe-c654-4a85-ae90-28688a58cd67","modelid":"cd92ca1e-d971-4b6a-8b03-443ad4a9506e"}];
        root.Bokeh.embed.embed_items(docs_json, render_items);
      
        }
        if (root.Bokeh !== undefined) {
          embed_document(root);
        } else {
          var attempts = 0;
          var timer = setInterval(function(root) {
            if (root.Bokeh !== undefined) {
              embed_document(root);
              clearInterval(timer);
            }
            attempts++;
            if (attempts > 100) {
              console.log("Bokeh: ERROR: Unable to run BokehJS code because BokehJS library is missing")
              clearInterval(timer);
            }
          }, 10, root)
        }
      })(window);
    });
  };
  if (document.readyState != "loading") fn();
  else document.addEventListener("DOMContentLoaded", fn);
})();