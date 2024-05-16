@istest
private class restconsumedem_test {
    public static testmethod void testconsume(){
        Test.setmock(HttpCalloutMock.class, new restconsumedemmock());
        restconsumedem.consumeRe();
    }

}