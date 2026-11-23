.class Lcom/join/mgps/activity/b3$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/b3;->C0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/b3;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/b3;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/b3$a;->b:Lcom/join/mgps/activity/b3;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/b3$a;->b:Lcom/join/mgps/activity/b3;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->m2:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sput-object p1, Lcom/join/mgps/activity/b3;->S2:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/t;->f(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/b3$a;->b:Lcom/join/mgps/activity/b3;

    .line 26
    .line 27
    const-string v0, "\u4e0d\u80fd\u4e0a\u4f20\u8868\u60c5"

    .line 28
    .line 29
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/b3;->showToast(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/b3$a;->b:Lcom/join/mgps/activity/b3;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/activity/b3;->i2:Landroid/widget/PopupWindow;

    .line 36
    .line 37
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 38
    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/activity/b3$a;->b:Lcom/join/mgps/activity/b3;

    .line 41
    .line 42
    iget-boolean v0, p1, Lcom/join/mgps/activity/b3;->y2:Z

    .line 43
    .line 44
    if-nez v0, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p1, Lcom/join/mgps/activity/b3;->y2:Z

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/activity/b3;->U()V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
