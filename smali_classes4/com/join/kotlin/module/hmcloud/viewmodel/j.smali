.class public final synthetic Lcom/join/kotlin/module/hmcloud/viewmodel/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/j;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/viewmodel/j;->b:Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel$loadLastCommonConfig$1;->b(Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
