.class Lcom/join/mgps/activity/message/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/message/a;->Y(IILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/join/mgps/activity/message/a;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/message/a;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pid",
            "val$rid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$e;->d:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/message/a$e;->b:I

    .line 4
    .line 5
    iput p3, p0, Lcom/join/mgps/activity/message/a$e;->c:I

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$e;->d:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/message/a;->w:Landroid/widget/PopupWindow;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/message/a$e;->d:Lcom/join/mgps/activity/message/a;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/join/mgps/activity/message/a;->B:Landroid/widget/EditText;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iget v1, p0, Lcom/join/mgps/activity/message/a$e;->b:I

    .line 25
    .line 26
    iget v2, p0, Lcom/join/mgps/activity/message/a$e;->c:I

    .line 27
    .line 28
    invoke-virtual {p1, v0, v1, v2}, Lcom/join/mgps/activity/message/a;->U(Ljava/lang/String;II)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
