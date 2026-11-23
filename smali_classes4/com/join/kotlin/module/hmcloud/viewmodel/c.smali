.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/hmcloud/HandleCfg;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/c;->b:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/c;->c:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/c;->b:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/c;->c:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->c(Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
