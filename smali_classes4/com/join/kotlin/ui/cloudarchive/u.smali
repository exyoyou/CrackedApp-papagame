.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/u;->b:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/u;->b:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;->T(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
