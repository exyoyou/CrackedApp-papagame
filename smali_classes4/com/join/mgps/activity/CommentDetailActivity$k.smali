.class Lcom/join/mgps/activity/CommentDetailActivity$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CommentDetailActivity;->afterView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/CommentDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CommentDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

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
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 6
    .line 7
    invoke-static {v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$000(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goLoginInteractive(Landroid/content/Context;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 19
    .line 20
    iget-object v0, p1, Lcom/join/mgps/activity/CommentDetailActivity;->edit_user_comment:Lcom/join/android/app/common/view/ClearEditText;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {p1, v0}, Lcom/join/mgps/activity/CommentDetailActivity;->access$102(Lcom/join/mgps/activity/CommentDetailActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 34
    .line 35
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$100(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    if-nez p1, :cond_1

    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 46
    .line 47
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$200(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const-string v0, "\u4e0d\u80fd\u53d1\u8868\u7a7a\u5b57\u7b26\u4e32"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$100(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 68
    .line 69
    .line 70
    move-result p1

    .line 71
    const/4 v0, 0x3

    .line 72
    if-gt p1, v0, :cond_2

    .line 73
    .line 74
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$200(Lcom/join/mgps/activity/CommentDetailActivity;)Landroid/content/Context;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string v0, "\u8d85\u8fc73\u4e2a\u5b57\u624d\u53ef\u4ee5\u53d1\u8868"

    .line 85
    .line 86
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-void

    .line 90
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 91
    .line 92
    const-string v0, "input_method"

    .line 93
    .line 94
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    const/4 v1, 0x2

    .line 111
    invoke-virtual {p1, v0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 112
    .line 113
    .line 114
    iget-object v2, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 115
    .line 116
    invoke-static {v2}, Lcom/join/mgps/activity/CommentDetailActivity;->access$300(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 121
    .line 122
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$100(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v4

    .line 126
    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 127
    .line 128
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 129
    .line 130
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$400(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v6

    .line 134
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 135
    .line 136
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$500(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v7

    .line 140
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 141
    .line 142
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$600(Lcom/join/mgps/activity/CommentDetailActivity;)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v8

    .line 146
    iget-object p1, p0, Lcom/join/mgps/activity/CommentDetailActivity$k;->b:Lcom/join/mgps/activity/CommentDetailActivity;

    .line 147
    .line 148
    invoke-static {p1}, Lcom/join/mgps/activity/CommentDetailActivity;->access$700(Lcom/join/mgps/activity/CommentDetailActivity;)I

    .line 149
    .line 150
    .line 151
    move-result v9

    .line 152
    invoke-virtual/range {v2 .. v9}, Lcom/join/mgps/activity/CommentDetailActivity;->toCreateComment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 153
    .line 154
    .line 155
    return-void
.end method
