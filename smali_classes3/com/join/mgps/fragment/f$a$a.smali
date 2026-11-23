.class Lcom/join/mgps/fragment/f$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f$a;->onSelected(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:Lcom/join/mgps/fragment/f$a;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f$a;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$paramInt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f$a$a;->c:Lcom/join/mgps/fragment/f$a;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/fragment/f$a$a;->b:I

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f$a$a;->c:Lcom/join/mgps/fragment/f$a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/f$a;->a:Lcom/join/mgps/fragment/f;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/fragment/f;->O(Lcom/join/mgps/fragment/f;)Landroidx/viewpager/widget/ViewPager;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget v1, p0, Lcom/join/mgps/fragment/f$a$a;->b:I

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
