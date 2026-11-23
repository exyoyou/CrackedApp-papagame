.class Lcom/join/mgps/fragment/MyArchiveFragment$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/fragment/MyArchiveFragment$v;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/MyArchiveFragment;->t(Lcom/join/mgps/dto/CloudListDataBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/fragment/MyArchiveFragment;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/MyArchiveFragment;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$i;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(ZLcom/join/mgps/dto/CloudListDataBean;)V
    .locals 0
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
    iget-object p1, p0, Lcom/join/mgps/fragment/MyArchiveFragment$i;->a:Lcom/join/mgps/fragment/MyArchiveFragment;

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Lcom/join/mgps/fragment/MyArchiveFragment;->w0(Lcom/join/mgps/dto/CloudListDataBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
