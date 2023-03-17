xquery version "3.1";

(:~ This library module contains XQSuite tests for the test1 app.
 :
 : @author bennet
 : @version 1.0.0
 : @see http://exist-db.org
 :)

module namespace tests = "http://exist-db.org/test1/apps/test1/tests";

import module namespace app = "http://exist-db.org/test1/apps/test1/templates" at "../../modules/app.xqm";
 
declare namespace test="http://exist-db.org/xquery/xqsuite";


declare variable $tests:map := map {1: 1};

declare
    %test:name('dummy-templating-call')
    %test:arg('n', 'div')
    %test:assertEquals("<p>Dummy templating function.</p>")
    function tests:templating-foo($n as xs:string) as node(){
        app:foo(element {$n} {}, $tests:map)
};
