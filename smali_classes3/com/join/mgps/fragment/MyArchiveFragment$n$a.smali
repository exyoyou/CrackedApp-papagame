.class Lcom/join/mgps/fragment/MyArchiveFragment$n$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment$n;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/MyArchiveFragment$n;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment$n;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$a;->a:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buttonView",
            "isChecked"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$a;->a:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 6
    .line 7
    const/4 p2, 0x0

    .line 8
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->Q(Lcom/join/mgps/fragment/MyArchiveFragment;Z)Z

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$n$a;->a:Lcom/join/mgps/fragment/MyArchiveFragment$n;

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/mgps/fragment/MyArchiveFragment$n;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 15
    .line 16
    const/4 p2, 0x1

    .line 17
    invoke-static {p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->Q(Lcom/join/mgps/fragment/MyArchiveFragment;Z)Z

    .line 18
    .line 19
    .line 20
    :goto_0
    return-void
.end method
