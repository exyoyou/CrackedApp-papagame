.class Lcom/join/mgps/dialog/j$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/j;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/j;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/j$a;->a:Lcom/join/mgps/dialog/j;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "radioGroup",
            "checkedId"
        }
    .end annotation

    .line 1
    const p1, 0x7f0a1312

    .line 2
    .line 3
    .line 4
    if-eq p2, p1, :cond_1

    .line 5
    .line 6
    const p1, 0x7f0a1317

    .line 7
    .line 8
    .line 9
    if-eq p2, p1, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/dialog/j$a;->a:Lcom/join/mgps/dialog/j;

    .line 13
    .line 14
    const/4 p2, 0x1

    .line 15
    iput p2, p1, Lcom/join/mgps/dialog/j;->d:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/dialog/j$a;->a:Lcom/join/mgps/dialog/j;

    .line 19
    .line 20
    const/4 p2, 0x2

    .line 21
    iput p2, p1, Lcom/join/mgps/dialog/j;->d:I

    .line 22
    .line 23
    :goto_0
    return-void
.end method
