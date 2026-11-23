.class public final synthetic Lcom/join/kotlin/ui/cloudarchive/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/d;->b:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/d;->b:Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;

    check-cast p1, Lcom/join/mgps/dto/CloudListDataBean;

    invoke-static {v0, p1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;->S(Lcom/join/kotlin/ui/cloudarchive/GameDetailEmusCloudListFragment;Lcom/join/mgps/dto/CloudListDataBean;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
