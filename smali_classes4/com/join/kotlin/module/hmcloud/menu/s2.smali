.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/s2;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    iput p2, p0, Lcom/join/kotlin/module/hmcloud/menu/s2;->c:I

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/s2;->b:Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;

    iget v1, p0, Lcom/join/kotlin/module/hmcloud/menu/s2;->c:I

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;->T(Lcom/join/kotlin/module/hmcloud/menu/HMSettingsOpFragment;IZ)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
