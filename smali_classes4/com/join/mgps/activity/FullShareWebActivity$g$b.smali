.class Lcom/join/mgps/activity/FullShareWebActivity$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/FullShareWebActivity$g;->a(Lcom/tbruyelle/rxpermissions2/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/FullShareWebActivity$g;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/FullShareWebActivity$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

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
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 4
    .line 5
    const-string v0, "clipboard"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/content/ClipboardManager;

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 14
    .line 15
    iget-object v0, v0, Lcom/join/mgps/activity/FullShareWebActivity$g;->c:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v1, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$200(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/h0;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 37
    .line 38
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$300(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/a2;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    if-eqz p1, :cond_0

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 47
    .line 48
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 49
    .line 50
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$300(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/a2;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a2;->c()V

    .line 55
    .line 56
    .line 57
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 58
    .line 59
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 60
    .line 61
    new-instance v0, Lcom/join/mgps/dialog/a2;

    .line 62
    .line 63
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$400(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const-string v2, "\u5df2\u590d\u5236\u5730\u5740\u81f3\u526a\u5207\u677f\uff0c\u8bf7\u81ea\u884c\u4f7f\u7528\u6d4f\u89c8\u5668\u6253\u5f00\u3002"

    .line 68
    .line 69
    const-string v3, "\u6211\u77e5\u9053\u4e86"

    .line 70
    .line 71
    const-string v4, "\u63d0\u793a"

    .line 72
    .line 73
    filled-new-array {v4, v2, v3}, [Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    const/16 v3, 0x1103

    .line 78
    .line 79
    invoke-direct {v0, p1, v1, v3, v2}, Lcom/join/mgps/dialog/a2;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;I[Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    invoke-static {p1, v0}, Lcom/join/mgps/activity/FullShareWebActivity;->access$302(Lcom/join/mgps/activity/FullShareWebActivity;Lcom/join/mgps/dialog/a2;)Lcom/join/mgps/dialog/a2;

    .line 83
    .line 84
    .line 85
    iget-object p1, p0, Lcom/join/mgps/activity/FullShareWebActivity$g$b;->b:Lcom/join/mgps/activity/FullShareWebActivity$g;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/activity/FullShareWebActivity$g;->d:Lcom/join/mgps/activity/FullShareWebActivity;

    .line 88
    .line 89
    invoke-static {p1}, Lcom/join/mgps/activity/FullShareWebActivity;->access$300(Lcom/join/mgps/activity/FullShareWebActivity;)Lcom/join/mgps/dialog/a2;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/join/mgps/dialog/a2;->e()V

    .line 94
    .line 95
    .line 96
    return-void
.end method
