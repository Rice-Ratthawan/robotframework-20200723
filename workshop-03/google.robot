*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
ค้นหา กาแฟ ใน Google ผ่าน Chrome
    เปิดโครมเข้า URL google.co.th
    ค้นหาคำว่า กาแฟ
    กดปุ่มค้นหาหรือEnter
    จะต้องพบคำว่า กาแฟ ในผลลัพธ์
    คลิกลิ้งแรกที่เจอ

*** Keywords ***
เปิดโครมเข้า URL google.co.th
    Open Browser    http://google.co.th    chrome
ค้นหาคำว่า กาแฟ
    Input Text    q    กาแฟ
กดปุ่มค้นหาหรือEnter
    Press Keys    q    RETURN
    Title Should Be    กาแฟ - ค้นหาด้วย Google
จะต้องพบคำว่า กาแฟ ในผลลัพธ์
    Page Should Contain    กาแฟ    TRACE
