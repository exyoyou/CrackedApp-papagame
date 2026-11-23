.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/g2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

.field public final synthetic d:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iput-object p3, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->d:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->c:Lcom/join/mgps/dto/hmcloud/HandleCfg;

    iget-object v2, p0, Lcom/join/kotlin/module/hmcloud/menu/g2;->d:Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;

    invoke-static {v0, v1, v2}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->Z(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;Lcom/join/mgps/dto/hmcloud/HandleCfg;Lcom/join/kotlin/module/hmcloud/dialog/HMConfirmDialog;)Lkotlin/Unit;

    move-result-object v0

    return-object v0
.end method
