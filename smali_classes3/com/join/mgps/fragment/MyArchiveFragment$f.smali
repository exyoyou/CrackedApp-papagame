.class Lcom/join/mgps/fragment/MyArchiveFragment$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/MyArchiveFragment$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->p0(Ljava/util/List;ZLcom/join/mgps/fragment/MyArchiveFragment$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/MyArchiveFragment$v;

.field final synthetic b:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;Lcom/join/mgps/fragment/MyArchiveFragment$v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$recoderCheckInterface"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$f;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/MyArchiveFragment$f;->a:Lcom/join/mgps/fragment/MyArchiveFragment$v;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "hasSuccess",
            "dataBean"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/fragment/MyArchiveFragment$f;->a:Lcom/join/mgps/fragment/MyArchiveFragment$v;

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment$v;->a(ZLcom/join/mgps/dto/CloudListDataBean;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$f;->b:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 12
    .line 13
    iget p2, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->N:I

    .line 14
    .line 15
    add-int/lit8 p2, p2, 0x1

    .line 16
    .line 17
    iput p2, p1, Lcom/join/mgps/fragment/MyArchiveFragment;->N:I

    .line 18
    .line 19
    :cond_1
    :goto_0
    return-void
.end method
