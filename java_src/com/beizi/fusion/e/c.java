package com.beizi.fusion.e;

import io.netty.handler.codec.http.websocketx.WebSocketServerHandshaker;
import java.util.Stack;
import net.lingala.zip4j.util.e;

/* JADX INFO: loaded from: classes6.dex */
public class c {
    private static boolean a(char c10) {
        return c10 == '+' || c10 == '-' || c10 == '*' || c10 == '/' || c10 == '%';
    }

    private static float b(String str) {
        str.hashCode();
        byte b10 = -1;
        switch (str.hashCode()) {
            case 37:
                if (str.equals("%")) {
                    b10 = 0;
                }
                break;
            case 40:
                if (str.equals("(")) {
                    b10 = 1;
                }
                break;
            case 42:
                if (str.equals(WebSocketServerHandshaker.SUB_PROTOCOL_WILDCARD)) {
                    b10 = 2;
                }
                break;
            case 43:
                if (str.equals("+")) {
                    b10 = 3;
                }
                break;
            case 45:
                if (str.equals("-")) {
                    b10 = 4;
                }
                break;
            case 47:
                if (str.equals(e.F0)) {
                    b10 = 5;
                }
                break;
        }
        switch (b10) {
            case 0:
            case 2:
            case 5:
                return 2.0f;
            case 1:
                return 0.0f;
            case 3:
            case 4:
                return 1.0f;
            default:
                return -1.0f;
        }
    }

    public static int a(String str) {
        char cCharAt;
        Stack stack = new Stack();
        Stack stack2 = new Stack();
        int length = str.length();
        int i10 = 0;
        while (i10 < length) {
            char cCharAt2 = str.charAt(i10);
            if (cCharAt2 >= '0' && cCharAt2 <= '9') {
                String str2 = "" + cCharAt2;
                while (true) {
                    int i11 = i10 + 1;
                    if (i11 >= length || (cCharAt = str.charAt(i11)) < '0' || cCharAt > '9') {
                        break;
                    }
                    str2 = str2 + cCharAt;
                    i10 = i11;
                }
                stack.push(str2);
            } else if (cCharAt2 == '(') {
                stack2.push("" + cCharAt2);
            } else if (cCharAt2 == ')') {
                while (!((String) stack2.peek()).equals("(")) {
                    stack.push("" + a(Integer.parseInt((String) stack.pop()), (String) stack2.pop(), Integer.parseInt((String) stack.pop())));
                }
                stack2.pop();
            } else {
                if (!a(cCharAt2)) {
                    throw new RuntimeException("无法识别" + cCharAt2);
                }
                if (stack2.empty()) {
                    stack2.push("" + cCharAt2);
                } else {
                    String str3 = "" + cCharAt2;
                    if (b(str3) > b((String) stack2.peek())) {
                        stack2.push(str3);
                    } else {
                        while (!stack2.empty() && b(str3) <= b((String) stack2.peek())) {
                            stack.push("" + a(Integer.parseInt((String) stack.pop()), (String) stack2.pop(), Integer.parseInt((String) stack.pop())));
                        }
                        stack2.push(str3);
                    }
                }
            }
            i10++;
        }
        while (!stack2.empty()) {
            stack.push("" + a(Integer.parseInt((String) stack.pop()), (String) stack2.pop(), Integer.parseInt((String) stack.pop())));
        }
        return Integer.parseInt((String) stack.pop());
    }

    private static int a(int i10, String str, int i11) {
        str.hashCode();
        switch (str) {
            case "%":
                return i10 % i11;
            case "*":
                return i10 * i11;
            case "+":
                return i10 + i11;
            case "-":
                return i10 - i11;
            case "/":
                return i10 / i11;
            default:
                return 0;
        }
    }
}
