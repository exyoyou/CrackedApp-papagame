.class Lcom/join/mgps/base/BaseQuickAdapter$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/base/BaseQuickAdapter;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/base/BaseQuickAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/base/BaseQuickAdapter;)V
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
    iput-object p1, p0, Lcom/join/mgps/base/BaseQuickAdapter$g;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/base/BaseQuickAdapter$g;->b:Lcom/join/mgps/base/BaseQuickAdapter;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/base/BaseQuickAdapter;->access$500(Lcom/join/mgps/base/BaseQuickAdapter;)Lcom/join/mgps/base/BaseQuickAdapter$l;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Lcom/join/mgps/base/BaseQuickAdapter$l;->onLoadMoreRequested()V

    .line 8
    .line 9
    .line 10
    return-void
.end method
