==================================
 EIN -- Emacs IPython Notebook
==================================

  --- or **E**\ IN **I**\ s not only for **N**\ otebooks.


.. note:: The code has been stable enough for my day to day work, but there are
          no guarantees for the safety for your notebook data.  Please make sure
          that you backup and backup often!

Features
========

The Emacs IPython Notebook (EIN) provides a client for the IPython v2.x and
3.x notebooks and an integrated REPL (like SLIME_) in Emacs.  EIN makes
notebook editing very powerful by allowing you to use any Emacs features, it
also expose IPython features such as code evaluation, object inspection and
code completion to the Emacs side.  These features can be accessed anywhere
in Emacs and improve Python code editing and reading in Emacs.

.. _SLIME: http://common-lisp.net/project/slime/

Highlighted features:

* Copy/paste cells, even to/from different notebooks.
* Console integration: You can easily connect to a kernel via the console
  application.  This enables you to start debugging in the same kernel.  It is
  even possible to connect to a console over ssh.
* An IPython kernel can be "connected" to any buffer.  This enables you to
  evaluate a buffer or buffer region using the same kernel as the notebook.
  Notebook goodies such as tooltip help, help browser and code completion are
  available in these buffers.
* Jump to definition (go to the definition by hitting ``M-.`` over an object).

Other notebook features:

* Inline images
* Auto/manual-completion
* Popup (tooltip) help
* Syntax highlighting in each cell types (Python/Markdown)
* Help browser (opens when executing ``function?``)
* Traceback viewer
