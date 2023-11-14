REPORT game .




INCLUDE ctsicons."ICONS FOR THE GAME.


DATA: v_turn(1)      VALUE 'X', "Select card.
      v_win(1)       VALUE ' ', "Win a player(X) or tie(-)!
      pressed_button VALUE '',
      value(4)       VALUE ''.

SELECTION-SCREEN BEGIN OF BLOCK b1.
SELECTION-SCREEN BEGIN OF LINE.


SELECTION-SCREEN PUSHBUTTON (4) firstrow USER-COMMAND uc_iconfirst.
SELECTION-SCREEN PUSHBUTTON (4) seccondr USER-COMMAND uc_iconseccond.
SELECTION-SCREEN PUSHBUTTON (4) thirdrow USER-COMMAND uc_iconthird.
SELECTION-SCREEN PUSHBUTTON (4) fourthr USER-COMMAND uc_iconfourth.
SELECTION-SCREEN PUSHBUTTON (4) fifthrow USER-COMMAND uc_iconfifth.
SELECTION-SCREEN PUSHBUTTON (4) sixthrow USER-COMMAND uc_iconsixth.
SELECTION-SCREEN PUSHBUTTON (4) seventhr USER-COMMAND uc_iconseventh.


SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon1 USER-COMMAND uc_icon1."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon2 USER-COMMAND uc_icon2."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon3 USER-COMMAND uc_icon3."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon4 USER-COMMAND uc_icon4."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon5 USER-COMMAND uc_icon5."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon6 USER-COMMAND uc_icon6."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon7 USER-COMMAND uc_icon7."3x1
SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon8 USER-COMMAND uc_icon8."1x1
SELECTION-SCREEN PUSHBUTTON (4) icon9 USER-COMMAND uc_icon9."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon10 USER-COMMAND uc_icon10."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon11 USER-COMMAND uc_icon11."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon12 USER-COMMAND uc_icon12."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon13 USER-COMMAND uc_icon13."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon14 USER-COMMAND uc_icon14."3x1
SELECTION-SCREEN END OF LINE.
SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon15 USER-COMMAND uc_icon15."1x1
SELECTION-SCREEN PUSHBUTTON (4) icon16 USER-COMMAND uc_icon16."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon17 USER-COMMAND uc_icon17."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon18 USER-COMMAND uc_icon18."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon19 USER-COMMAND uc_icon19."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon20 USER-COMMAND uc_icon20."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon21 USER-COMMAND uc_icon21."3x1
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon22 USER-COMMAND uc_icon22."1x1
SELECTION-SCREEN PUSHBUTTON (4) icon23 USER-COMMAND uc_icon23."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon24 USER-COMMAND uc_icon24."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon25 USER-COMMAND uc_icon25."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon26 USER-COMMAND uc_icon26."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon27 USER-COMMAND uc_icon27."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon28 USER-COMMAND uc_icon28."3x1
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon29 USER-COMMAND uc_icon29."1x1
SELECTION-SCREEN PUSHBUTTON (4) icon30 USER-COMMAND uc_icon30."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon31 USER-COMMAND uc_icon31."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon32 USER-COMMAND uc_icon32."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon33 USER-COMMAND uc_icon33."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon34 USER-COMMAND uc_icon34."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon35 USER-COMMAND uc_icon35."3x1
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (4) icon36 USER-COMMAND uc_icon36."1x1
SELECTION-SCREEN PUSHBUTTON (4) icon37 USER-COMMAND uc_icon37."2x1
SELECTION-SCREEN PUSHBUTTON (4) icon38 USER-COMMAND uc_icon38."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon39 USER-COMMAND uc_icon39."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon40 USER-COMMAND uc_icon40."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon41 USER-COMMAND uc_icon41."3x1
SELECTION-SCREEN PUSHBUTTON (4) icon42 USER-COMMAND uc_icon42."3x1
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN BEGIN OF LINE.
SELECTION-SCREEN PUSHBUTTON (12) restart USER-COMMAND uc_restart.
SELECTION-SCREEN END OF LINE.

SELECTION-SCREEN END OF BLOCK b1.

*----------------------------------------------------------------------*
*                        AT SELECTION-SCREEN                           *
*----------------------------------------------------------------------*
AT SELECTION-SCREEN.
  CASE sy-ucomm.
    WHEN 'UC_ICONFIRST'.
      PERFORM first_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_ICONSECCOND'.
      PERFORM seccond_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_ICONTHIRD'.
      PERFORM third_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_ICONFOURTH'.
      PERFORM fourth_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_ICONFIFTH'.
      PERFORM fifth_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_ICONSIXTH'.
      PERFORM sixth_row_push  USING pressed_button .
      PERFORM check_line .
      PERFORM check_row .
      PERFORM check_diagonal.
    WHEN 'UC_ICONSEVENTH'.
      PERFORM seventh_row_push  USING pressed_button .
      PERFORM check_row .
      PERFORM check_line .
      PERFORM check_diagonal.
    WHEN 'UC_RESTART'.
      PERFORM restart_game.
  ENDCASE.

*----------------------------------------------------------------------*
*                         INITIALIZATION                               *
*----------------------------------------------------------------------*
INITIALIZATION.
  PERFORM clear_buttons.

*&---------------------------------------------------------------------*
*&      Form  clear_buttons
*&---------------------------------------------------------------------*
* Clear the buttons of Selection-Screen.
*----------------------------------------------------------------------*
FORM clear_buttons .
  icon1 = '@5F@' .
  icon2 = '@5F@' .
  icon3 = '@5F@' .
  icon4 = '@5F@' .
  icon5 = '@5F@' .
  icon6 = '@5F@' .
  icon7 = '@5F@' .
  icon8 = '@5F@' .
  icon9 = '@5F@' .
  icon10 = '@5F@' .
  icon11 = '@5F@' .
  icon12 = '@5F@' .
  icon13 = '@5F@' .
  icon14 = '@5F@' .
  icon15 = '@5F@' .
  icon16 = '@5F@' .
  icon17 = '@5F@' .
  icon18 = '@5F@' .
  icon19 = '@5F@' .
  icon20 = '@5F@' .
  icon21 = '@5F@' .
  icon22 = '@5F@' .
  icon23 = '@5F@' .
  icon24 = '@5F@' .
  icon25 = '@5F@' .
  icon26 = '@5F@' .
  icon27 = '@5F@' .
  icon28 = '@5F@' .
  icon29 = '@5F@' .
  icon30 = '@5F@' .
  icon31 = '@5F@' .
  icon32 = '@5F@' .
  icon33 = '@5F@' .
  icon34 = '@5F@' .
  icon35 = '@5F@' .
  icon36 = '@5F@' .
  icon37 = '@5F@' .
  icon38 = '@5F@' .
  icon39 = '@5F@' .
  icon40 = '@5F@' .
  icon41 = '@5F@' .
  icon42 = '@5F@' .

  restart = 'Restart'.
ENDFORM." clear_buttons

*&---------------------------------------------------------------------*
*&      Form  push_button
*&---------------------------------------------------------------------*
* Checks when a user push a button.
*----------------------------------------------------------------------*
*  -->  p_icon  Button pushed
*----------------------------------------------------------------------*

FORM first_row_push USING p_icon.
  IF icon36 = '@5F@'.
    IF v_turn = 'X'.
      icon36 =  '@01@'.
    ELSE.
      icon36 = '@04@'.
    ENDIF.
  ELSEIF icon29 = '@5F@'.
    IF v_turn = 'X'.
      icon29 = '@01@'.
    ELSE.
      icon29 = '@04@'.
    ENDIF.
  ELSEIF icon22 = '@5F@'.
    IF v_turn = 'X'.
      icon22 = '@01@'.
    ELSE.
      icon22 = '@04@'.
    ENDIF.
  ELSEIF icon15 = '@5F@'.
    IF v_turn = 'X'.
      icon15 = '@01@'.
    ELSE.
      icon15 = '@04@'.
    ENDIF.
  ELSEIF icon8 = '@5F@'.
    IF v_turn = 'X'.
      icon8 = '@01@'.
    ELSE.
      icon8 = '@04@'.
    ENDIF.
  ELSEIF icon1 = '@5F@'.
    IF v_turn = 'X'.
      icon1 = '@01@'.
    ELSE.
      icon1 = '@04@'.
    ENDIF.
  ENDIF.

  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.

FORM seccond_row_push USING p_icon.
  IF icon37 = '@5F@'.
    IF v_turn = 'X'.
      icon37 =  '@01@'.
    ELSE.
      icon37 = '@04@'.
    ENDIF.
  ELSEIF icon30 = '@5F@'.
    IF v_turn = 'X'.
      icon30 = '@01@'.
    ELSE.
      icon30 = '@04@'.
    ENDIF.
  ELSEIF icon23 = '@5F@'.
    IF v_turn = 'X'.
      icon23 = '@01@'.
    ELSE.
      icon23 = '@04@'.
    ENDIF.
  ELSEIF icon16 = '@5F@'.
    IF v_turn = 'X'.
      icon16 = '@01@'.
    ELSE.
      icon16 = '@04@'.
    ENDIF.
  ELSEIF icon9 = '@5F@'.
    IF v_turn = 'X'.
      icon9 = '@01@'.
    ELSE.
      icon9 = '@04@'.
    ENDIF.
  ELSEIF icon2 = '@5F@'.
    IF v_turn = 'X'.
      icon2 = '@01@'.
    ELSE.
      icon2 = '@04@'.
    ENDIF.
  ENDIF.

  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.


FORM third_row_push  USING p_icon.
  IF icon38 = '@5F@'.
    IF v_turn = 'X'.
      icon38 =  '@01@'.
    ELSE.
      icon38 = '@04@'.
    ENDIF.
  ELSEIF icon31 = '@5F@'.
    IF v_turn = 'X'.
      icon31 = '@01@'.
    ELSE.
      icon31 = '@04@'.
    ENDIF.
  ELSEIF icon24 = '@5F@'.
    IF v_turn = 'X'.
      icon24 = '@01@'.
    ELSE.
      icon24 = '@04@'.
    ENDIF.
  ELSEIF icon17 = '@5F@'.
    IF v_turn = 'X'.
      icon17 = '@01@'.
    ELSE.
      icon17 = '@04@'.
    ENDIF.
  ELSEIF icon10 = '@5F@'.
    IF v_turn = 'X'.
      icon10 = '@01@'.
    ELSE.
      icon10 = '@04@'.
    ENDIF.
  ELSEIF icon3 = '@5F@'.
    IF v_turn = 'X'.
      icon3 = '@01@'.
    ELSE.
      icon3 = '@04@'.
    ENDIF.
  ENDIF.

  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.
FORM fourth_row_push  USING p_icon.
  IF icon39 = '@5F@'.
    IF v_turn = 'X'.
      icon39 =  '@01@'.
    ELSE.
      icon39 = '@04@'.
    ENDIF.
  ELSEIF icon32 = '@5F@'.
    IF v_turn = 'X'.
      icon32 = '@01@'.
    ELSE.
      icon32 = '@04@'.
    ENDIF.
  ELSEIF icon25 = '@5F@'.
    IF v_turn = 'X'.
      icon25 = '@01@'.
    ELSE.
      icon25 = '@04@'.
    ENDIF.
  ELSEIF icon18 = '@5F@'.
    IF v_turn = 'X'.
      icon18 = '@01@'.
    ELSE.
      icon18 = '@04@'.
    ENDIF.
  ELSEIF icon11 = '@5F@'.
    IF v_turn = 'X'.
      icon11 = '@01@'.
    ELSE.
      icon11 = '@04@'.
    ENDIF.
  ELSEIF icon4 = '@5F@'.
    IF v_turn = 'X'.
      icon4 = '@01@'.
    ELSE.
      icon4 = '@04@'.
    ENDIF.
  ENDIF.

  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.

FORM fifth_row_push  USING p_icon.
  IF icon40 = '@5F@'.
    IF v_turn = 'X'.
      icon40 =  '@01@'.
    ELSE.
      icon40 = '@04@'.
    ENDIF.
  ELSEIF icon33 = '@5F@'.
    IF v_turn = 'X'.
      icon33 = '@01@'.
    ELSE.
      icon33 = '@04@'.
    ENDIF.
  ELSEIF icon26 = '@5F@'.
    IF v_turn = 'X'.
      icon26 = '@01@'.
    ELSE.
      icon26 = '@04@'.
    ENDIF.
  ELSEIF icon19 = '@5F@'.
    IF v_turn = 'X'.
      icon19 = '@01@'.
    ELSE.
      icon19 = '@04@'.
    ENDIF.
  ELSEIF icon12 = '@5F@'.
    IF v_turn = 'X'.
      icon12 = '@01@'.
    ELSE.
      icon12 = '@04@'.
    ENDIF.
  ELSEIF icon5 = '@5F@'.
    IF v_turn = 'X'.
      icon5 = '@01@'.
    ELSE.
      icon5 = '@04@'.
    ENDIF.
  ENDIF.

  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.

FORM sixth_row_push  USING p_icon.
  IF icon41 = '@5F@'.
    IF v_turn = 'X'.
      icon41 =  '@01@'.
    ELSE.
      icon41 = '@04@'.
    ENDIF.
  ELSEIF icon34 = '@5F@'.
    IF v_turn = 'X'.
      icon34 = '@01@'.
    ELSE.
      icon34 = '@04@'.
    ENDIF.
  ELSEIF icon27 = '@5F@'.
    IF v_turn = 'X'.
      icon27 = '@01@'.
    ELSE.
      icon27 = '@04@'.
    ENDIF.
  ELSEIF icon20 = '@5F@'.
    IF v_turn = 'X'.
      icon20 = '@01@'.
    ELSE.
      icon20 = '@04@'.
    ENDIF.
  ELSEIF icon13 = '@5F@'.
    IF v_turn = 'X'.
      icon13 = '@01@'.
    ELSE.
      icon13 = '@04@'.
    ENDIF.
  ELSEIF icon6 = '@5F@'.
    IF v_turn = 'X'.
      icon6 = '@01@'.
    ELSE.
      icon6 = '@04@'.
    ENDIF.
  ENDIF.
  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.
FORM seventh_row_push  USING p_icon.
  IF icon42 = '@5F@'.
    IF v_turn = 'X'.
      icon42 =  '@01@'.
    ELSE.
      icon42 = '@04@'.
    ENDIF.
  ELSEIF icon35 = '@5F@'.
    IF v_turn = 'X'.
      icon35 = '@01@'.
    ELSE.
      icon35 = '@04@'.
    ENDIF.
  ELSEIF icon28 = '@5F@'.
    IF v_turn = 'X'.
      icon28 = '@01@'.
    ELSE.
      icon28 = '@04@'.
    ENDIF.
  ELSEIF icon21 = '@5F@'.
    IF v_turn = 'X'.
      icon21 = '@01@'.
    ELSE.
      icon21 = '@04@'.
    ENDIF.
  ELSEIF icon14 = '@5F@'.
    IF v_turn = 'X'.
      icon14 = '@01@'.
    ELSE.
      icon14 = '@04@'.
    ENDIF.
  ELSEIF icon7 = '@5F@'.
    IF v_turn = 'X'.
      icon7 = '@01@'.
    ELSE.
      icon7 = '@04@'.
    ENDIF.
  ENDIF.
  IF v_turn = 'X'.
    v_turn = 'Y'.
  ELSE.
    v_turn = 'X'.
  ENDIF.
ENDFORM.

FORM check_diagonal.
  IF v_turn <> 'X'.
    value = '@01@'.
  ELSE.
    value = '@04@'.
  ENDIF.

  IF icon1 = icon9 AND icon9 = icon17 AND icon17 = icon25 AND icon1 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon2 = icon10 AND icon10 = icon18 AND icon18 = icon26 AND icon2 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon3 = icon11 AND icon11 = icon19 AND icon19 = icon27 AND icon3 = value.
   PERFORM show_winning_message.
  ENDIF.
  IF icon4 = icon12 AND icon12 = icon20 AND icon20 = icon28 AND icon4 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon8 = icon16 AND icon16 = icon24 AND icon24 = icon32 AND icon8 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon9 = icon17 AND icon17 = icon25 AND icon25 = icon33 AND icon9 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon10 = icon18 AND icon18 = icon26 AND icon26 = icon34 AND icon10 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon11 = icon19 AND icon19 = icon27 AND icon27 = icon35 AND icon11 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon15 = icon23 AND icon23 = icon31 AND icon31 = icon39 AND icon15 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon16 = icon24 AND icon24 = icon32 AND icon32 = icon40 AND icon16 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon17 = icon25 AND icon25 = icon33 AND icon33 = icon41 AND icon17 = value.
    PERFORM show_winning_message.
  ENDIF.

  IF icon7 = icon13 AND icon13 = icon19 AND icon19 = icon25 AND icon7 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon6 = icon12 AND icon12 = icon18 AND icon18 = icon24 AND icon6 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon5 = icon11 AND icon11 = icon17 AND icon17 = icon23 AND icon5 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon4 = icon10 AND icon10 = icon16 AND icon16 = icon22 AND icon4 = value.
    PERFORM show_winning_message.
  ENDIF.

  IF icon14 = icon20 AND icon20 = icon26 AND icon26 = icon32 AND icon14 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon13 = icon19 AND icon19 = icon25 AND icon25 = icon31 AND icon13 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon12 = icon18 AND icon18 = icon24 AND icon24 = icon30 AND icon12 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon11 = icon17 AND icon17 = icon23 AND icon23 = icon29 AND icon11 = value.
    PERFORM show_winning_message.
  ENDIF.


  IF icon21 = icon27 AND icon27 = icon33 AND icon33 = icon39 AND icon21 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon20 = icon26 AND icon26 = icon32 AND icon32 = icon38 AND icon20 = value.
   PERFORM show_winning_message.
  ENDIF.
  IF icon19 = icon25 AND icon25 = icon31 AND icon31 = icon37 AND icon19 = value.
    PERFORM show_winning_message.
  ENDIF.


  IF icon36 = icon30 AND icon30 = icon24 AND icon24 = icon18 AND icon36 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon37 = icon31 AND icon31 = icon25 AND icon25 = icon19 AND icon37 = value.
   PERFORM show_winning_message.
  ENDIF.
  IF icon38 = icon32 AND icon32 = icon26 AND icon26 = icon20  AND icon38 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon39 = icon33 AND icon33 = icon27 AND icon27 = icon21  AND icon39 = value.
   PERFORM show_winning_message.
  ENDIF.


  IF icon29 = icon23 AND icon23 = icon17 AND icon17 = icon11  AND icon29 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon30 = icon24 AND icon24 = icon18 AND icon18 = icon12  AND icon30 = value.
   PERFORM show_winning_message.
  ENDIF.
  IF icon31 = icon25 AND icon25 = icon19 AND icon19 = icon13 AND icon31 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon32 = icon26 AND icon26 = icon20 AND icon20 = icon14 AND icon32 = value.
   PERFORM show_winning_message.
  ENDIF.


  IF icon22 = icon16 AND icon16 = icon10 AND icon10 = icon4  AND icon22 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon23 = icon17 AND icon17 = icon11 AND icon11 = icon5  AND icon23 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon24 = icon18 AND icon18 = icon12 AND icon12 = icon6  AND icon24 = value.
    PERFORM show_winning_message.
  ENDIF.
  IF icon25 = icon19 AND icon19 = icon13 AND icon13 = icon7  AND icon25 = value.
    PERFORM show_winning_message.
  ENDIF.
ENDFORM.


*--------------------------------------------------------------*
*Check Winner on line
*--------------------------------------------------------------*

FORM check_line.

  IF v_turn <> 'X'.
    value = '@01@'.
  ELSE.
    value = '@04@'.
  ENDIF.


*--------------------------------------------------------------*
*Zeile 1
*--------------------------------------------------------------*
  IF icon1 = icon2 AND icon2 = icon3 AND icon3 = icon4 AND icon1 = value.
    PERFORM show_winning_message.
  ELSEIF icon2 = icon3 AND icon3 = icon4 AND icon4 = icon5 AND icon2 = value.
    PERFORM show_winning_message.
  ELSEIF icon3 = icon4 AND icon4 = icon5 AND icon5 = icon6 AND icon2 = value.
    PERFORM show_winning_message..
  ELSEIF icon4 = icon5 AND icon5 = icon6 AND icon6 = icon7 AND icon4 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

*--------------------------------------------------------------*
*Zeile 2
*--------------------------------------------------------------*


  IF icon8 = icon9 AND icon9 = icon10 AND icon10 = icon11 AND icon8 = value.
    PERFORM show_winning_message.
  ELSEIF icon9 = icon10 AND icon10 = icon11 AND icon11 = icon12 AND icon9 = value.
    PERFORM show_winning_message.
  ELSEIF icon10 = icon11 AND icon11 = icon12 AND icon12 = icon13 AND icon10 = value.
    PERFORM show_winning_message.
  ELSEIF icon11 = icon12 AND icon12 = icon13 AND icon13 = icon14 AND icon11 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.


*--------------------------------------------------------------*
*Zeile 3
*--------------------------------------------------------------*
  IF icon15 = icon16 AND icon16 = icon17 AND icon17 = icon18 AND icon15 = value.
    PERFORM show_winning_message.
  ELSEIF icon16 = icon17 AND icon17 = icon18 AND icon18 = icon19 AND icon16 = value.
    PERFORM show_winning_message.
  ELSEIF icon17 = icon18 AND icon18 = icon19 AND icon19 = icon20 AND icon17 = value.
    PERFORM show_winning_message.
  ELSEIF icon18 = icon19 AND icon19 = icon20 AND icon20 = icon21 AND icon18 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.


*--------------------------------------------------------------*
*Zeile 4
*--------------------------------------------------------------*
  IF icon22 = icon23 AND icon23 = icon24 AND icon24 = icon25 AND icon22 = value.
    PERFORM show_winning_message.
  ELSEIF icon23 = icon24 AND icon24 = icon25 AND icon25 = icon26 AND icon23 = value.
    PERFORM show_winning_message.
  ELSEIF icon24 = icon25 AND icon25 = icon26 AND icon26 = icon27 AND icon24 = value.
    PERFORM show_winning_message.
  ELSEIF icon25 = icon26 AND icon26 = icon27 AND icon27 = icon28 AND icon25 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

*--------------------------------------------------------------*
*Zeile 5
*--------------------------------------------------------------*
  IF icon29 = icon30 AND icon30 = icon31 AND icon31 = icon32 AND icon29 = value.
    PERFORM show_winning_message.
  ELSEIF icon30 = icon31 AND icon31 = icon32 AND icon32 = icon33 AND icon30 = value.
    PERFORM show_winning_message.
  ELSEIF icon31 = icon32 AND icon32 = icon33 AND icon33 = icon34 AND icon31 = value.
    PERFORM show_winning_message.
  ELSEIF icon32 = icon33 AND icon33 = icon34 AND icon34 = icon35 AND icon32 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.
*--------------------------------------------------------------*
*Zeile 6
*--------------------------------------------------------------*
  IF icon36 = icon37 AND icon37 = icon38 AND icon38 = icon39 AND icon36 = value.
    PERFORM show_winning_message.
  ELSEIF icon37 = icon38 AND icon38 = icon39 AND icon39 = icon40 AND icon37 = value.
    PERFORM show_winning_message.
  ELSEIF icon38 = icon39 AND icon39 = icon40 AND icon40 = icon41 AND icon38 = value.
    PERFORM show_winning_message.
  ELSEIF icon39 = icon40 AND icon40 = icon41 AND icon41 = icon42 AND icon39 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

ENDFORM.


*--------------------------------------------------------------*
*Check Winner on row
*--------------------------------------------------------------*
FORM check_row.
  IF v_turn <> 'X'.
    value = '@01@'.
  ELSE.
    value = '@04@'.
  ENDIF.


*--------------------------------------------------------------*
*Spalte 1
*--------------------------------------------------------------*
  IF icon1 = icon8 AND icon8 = icon15 AND icon15 = icon22 AND icon1 = value.
    PERFORM show_winning_message.
  ELSEIF icon8 = icon15 AND icon15 = icon22 AND icon22 = icon29 AND icon2 = value.
    PERFORM show_winning_message.
  ELSEIF icon15 = icon22 AND icon22 = icon29 AND icon29 = icon36 AND icon15 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

*--------------------------------------------------------------*
*Spalte 2
*--------------------------------------------------------------*

  IF icon2 = icon9 AND icon9 = icon16 AND icon16 = icon23 AND icon2 = value.
    PERFORM show_winning_message.
  ELSEIF icon9 = icon16 AND icon16 = icon23 AND icon23 = icon30 AND icon9 = value.
    PERFORM show_winning_message.
  ELSEIF icon16 = icon23 AND icon23 = icon30 AND icon30 = icon37 AND icon16 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.


*--------------------------------------------------------------*
*Spalte 3
*--------------------------------------------------------------*
  IF icon3 = icon10 AND icon10 = icon17 AND icon17 = icon24 AND icon3 = value.
    PERFORM show_winning_message.
  ELSEIF icon10 = icon17 AND icon17 = icon24 AND icon24 = icon31 AND icon10 = value.
    PERFORM show_winning_message.
  ELSEIF icon17 = icon24 AND icon24 = icon31 AND icon31 = icon38 AND icon17 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.


*--------------------------------------------------------------*
*Spalte 4
*--------------------------------------------------------------*
  IF icon4 = icon11 AND icon11 = icon18 AND icon18 = icon25 AND icon4 = value.
   PERFORM show_winning_message.
  ELSEIF icon11 = icon18 AND icon18 = icon25 AND icon25 = icon32 AND icon11 = value.
     PERFORM show_winning_message.
  ELSEIF icon18 = icon25 AND icon25 = icon32 AND icon32 = icon39 AND icon18 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

*--------------------------------------------------------------*
*Spalte 5
*--------------------------------------------------------------*
  IF icon5 = icon12 AND icon12 = icon19 AND icon19 = icon26 AND icon5 = value.
    PERFORM show_winning_message.
  ELSEIF icon12 = icon19 AND icon19 = icon26 AND icon26 = icon33 AND icon12 = value.
    PERFORM show_winning_message.
  ELSEIF icon19 = icon26 AND icon26 = icon33 AND icon33 = icon40 AND icon19 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.
*--------------------------------------------------------------*
*Spalte 6
*--------------------------------------------------------------*
  IF icon6 = icon13 AND icon13 = icon20 AND icon20 = icon27 AND icon6 = value.
    PERFORM show_winning_message.
  ELSEIF icon13 = icon20 AND icon20 = icon27 AND icon27 = icon34 AND icon13 = value.
    PERFORM show_winning_message.
  ELSEIF icon20 = icon27 AND icon27 = icon34 AND icon34 = icon41 AND icon20 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.
*--------------------------------------------------------------*
*Spalte 7
*--------------------------------------------------------------*
  IF icon7 = icon14 AND icon14 = icon21 AND icon21 = icon28 AND icon7 = value.
   PERFORM show_winning_message.
  ELSEIF icon14 = icon21 AND icon21 = icon29 AND icon29 = icon36 AND icon14 = value.
    PERFORM show_winning_message.
  ELSEIF icon21 = icon28 AND icon28 = icon35 AND icon35 = icon42 AND icon21 = value.
    PERFORM show_winning_message.
  ELSE.
  ENDIF.

ENDFORM.

FORM show_winning_message.
  IF v_turn <> 'X'.
      MESSAGE 'Spieler 1 hat gewonnen' TYPE 'I' DISPLAY LIKE 'E'.
    ELSE.
      MESSAGE 'Spieler 2 hat gewonnen' TYPE 'I' DISPLAY LIKE 'E'.
    ENDIF.
EndForm.

*--------------------------------------------------------------*
*Initialization
*--------------------------------------------------------------*
INITIALIZATION.
  firstrow = '@0H@'.
  seccondr = '@0H@'.
  fourthr = '@0H@'.
  fifthrow = '@0H@'.
  thirdrow = '@0H@'.
  sixthrow = '@0H@'.
  seventhr = '@0H@'.


*&---------------------------------------------------------------------*
*&      Form  restart_game
*&---------------------------------------------------------------------*
* Restart the game.
*----------------------------------------------------------------------*
FORM restart_game .
  v_turn = 'X'.
  CLEAR v_win.

  PERFORM clear_buttons.

ENDFORM." restart_game
