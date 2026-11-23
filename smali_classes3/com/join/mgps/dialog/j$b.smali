.class Lcom/join/mgps/dialog/j$b;
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
    iput-object p1, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

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
    const/4 p1, 0x3

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 3
    .line 4
    .line 5
    :pswitch_0
    iget-object p2, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

    .line 6
    .line 7
    iput p1, p2, Lcom/join/mgps/dialog/j;->e:I

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :pswitch_1
    iget-object p1, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

    .line 11
    .line 12
    const/4 p2, 0x5

    .line 13
    iput p2, p1, Lcom/join/mgps/dialog/j;->e:I

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :pswitch_2
    iget-object p1, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

    .line 17
    .line 18
    const/4 p2, 0x6

    .line 19
    iput p2, p1, Lcom/join/mgps/dialog/j;->e:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_3
    iget-object p2, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

    .line 23
    .line 24
    iput p1, p2, Lcom/join/mgps/dialog/j;->e:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_4
    iget-object p1, p0, Lcom/join/mgps/dialog/j$b;->a:Lcom/join/mgps/dialog/j;

    .line 28
    .line 29
    const/4 p2, 0x4

    .line 30
    iput p2, p1, Lcom/join/mgps/dialog/j;->e:I

    .line 31
    .line 32
    :goto_0
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x7f0a1313
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
