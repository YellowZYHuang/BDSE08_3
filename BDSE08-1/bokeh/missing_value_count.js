(function () {
    var fn = function () {
        Bokeh.safely(function () {
            (function (root) {
                function embed_document(root) {
                    var docs_json = document.getElementById('6554d892-a097-4c22-82b2-7eea27764dc9').textContent;
                    var render_items = [{ "docid": "9545bb3b-c5ce-4e47-82bf-1b6cb25084a1", "roots": { "0465508e-64fe-48cc-9d7d-977270f884f8": "fcfecd09-4a03-48d3-b3ef-37f92a1b97f2" } }];
                    root.Bokeh.embed.embed_items(docs_json, render_items);
                }
                if (root.Bokeh !== undefined) {
                    embed_document(root);
                } else {
                    var attempts = 0;
                    var timer = setInterval(function (root) {
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