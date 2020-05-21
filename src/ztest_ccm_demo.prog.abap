*&---------------------------------------------------------------------*
*& Report ztest_ccm_demo
*&---------------------------------------------------------------------*
*&
*&---------------------------------------------------------------------*
REPORT ztest_ccm_demo.

SELECT SINGLE * FROM sflight INTO @DATA(sflight) WHERE carrid = 'LH'.
WRITE: sflight-connid.
