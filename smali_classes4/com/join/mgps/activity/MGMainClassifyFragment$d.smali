.class Lcom/join/mgps/activity/MGMainClassifyFragment$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainClassifyFragment;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RadioButton;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/MGMainClassifyFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainClassifyFragment;Landroid/widget/RadioButton;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$radioButton",
            "val$id"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->b:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "compoundButton",
            "b"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->r:[Ljava/lang/String;

    .line 6
    .line 7
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    .line 8
    .line 9
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const/4 v0, 0x0

    .line 22
    aput-object p2, p1, v0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->c:Lcom/join/mgps/activity/MGMainClassifyFragment;

    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/activity/MGMainClassifyFragment;->s:[Ljava/lang/String;

    .line 27
    .line 28
    iget-object p2, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->b:Ljava/lang/String;

    .line 29
    .line 30
    aput-object p2, p1, v0

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    .line 33
    .line 34
    const p2, -0xb8b00

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/MGMainClassifyFragment$d;->a:Landroid/widget/RadioButton;

    .line 42
    .line 43
    const p2, -0xc3c3c4

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 47
    .line 48
    .line 49
    :goto_0
    return-void
.end method
