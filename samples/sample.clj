(ns foobar.core
  (:require [clojure.string :as str]))

;; Defining a variable
(def foo "Lorem Ipsum")

;; Defining a function
(defn bar [x]
  (* x 2))

;; Using the function
(println (bar 123))

;; Using a list
(def baz [1 2 3 4 5])
(doseq [i baz]
  (println i))

;; Using a map
(def qux {"foo" "bar", "baz" "qux"})
(doseq [[k v] qux]
  (println (str "Key: " k ", Value: " v)))

;; Using control structures
(if (contains? qux "foo")
  (println (str "Found foo: " (get qux "foo")))
  (println "Did not find foo"))

;; Using a loop and recur
(loop [i 5]
  (when (> i 0)
    (println i)
    (recur (dec i))))

;; Using a higher-order function
(defn apply-to-foobar [f]
  (f foo))

(println (apply-to-foobar str/upper-case))
