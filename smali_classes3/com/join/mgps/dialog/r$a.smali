.class Lcom/join/mgps/dialog/r$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/r;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/r;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/r;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/r;->a(Lcom/join/mgps/dialog/r;)Landroid/widget/EditText;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    const-string v1, "^[\\u4e00-\\u9fa5a-zA-Z0-9_]*$"

    .line 24
    .line 25
    invoke-static {v1, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_0

    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 32
    .line 33
    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "\u7528\u6237\u540d\u4e3a\u4e2d\u6587/\u5b57\u6bcd/\u6570\u5b57/\u4e0b\u5212\u7ebf,\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    return-void

    .line 47
    :cond_0
    const/4 v1, 0x1

    .line 48
    if-lt v0, v1, :cond_3

    .line 49
    .line 50
    const/16 v1, 0xc

    .line 51
    .line 52
    if-le v0, v1, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->j(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    const/16 v1, 0xb

    .line 66
    .line 67
    if-ne v0, v1, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const-string v0, "\u4e3a\u4fdd\u62a4\u4f60\u7684\u4fe1\u606f\u5b89\u5168\uff0c\u7528\u6237\u540d\u4e0d\u80fd\u7c7b\u4f3c\u624b\u673a\u53f7\u54e6"

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/join/mgps/dialog/r;->c(Lcom/join/mgps/dialog/r;)Lcom/join/mgps/dialog/r$c;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-interface {v0, p1}, Lcom/join/mgps/dialog/r$c;->backName(Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 95
    .line 96
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 97
    .line 98
    .line 99
    return-void

    .line 100
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/dialog/r$a;->b:Lcom/join/mgps/dialog/r;

    .line 101
    .line 102
    invoke-static {p1}, Lcom/join/mgps/dialog/r;->b(Lcom/join/mgps/dialog/r;)Landroid/content/Context;

    .line 103
    .line 104
    .line 105
    move-result-object p1

    .line 106
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-string v0, "\u7528\u6237\u540d\u4e3a1~12\u4e2a\u5b57\u7b26\uff0c\u8bf7\u68c0\u67e5\u540e\u91cd\u65b0\u8f93\u5165"

    .line 111
    .line 112
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    return-void
.end method
