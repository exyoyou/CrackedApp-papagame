.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/n1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/n1;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/n1;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/PictureSetting;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;->O(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsCommonFragment;Lcom/join/mgps/dto/hmcloud/PictureSetting;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
