.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/b1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/b1;->b:Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;

    check-cast p1, Lcom/join/mgps/dto/ResponseModel;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;->W(Lcom/join/kotlin/ui/cloudarchive/ModgameCloudListFragment;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
