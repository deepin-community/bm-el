;; autopkgtest cannot be relied on to set $HOME
;; consequently $HOME/.bm-repository becomes /.bm-repository,
;; and tests to write to this file will fail.
;; $AUTOPKGTEST_TMP and $ADT_TMP are the scratch spaces that
;; should be used instead.
(setq bm-repository-file (concat (or (getenv "AUTOPKGTEST_TMP")
                                     (getenv "ADT_TMP")) "bm-repository"))
(load-file "bm-tests.el")
(ert-run-tests-batch-and-exit)
