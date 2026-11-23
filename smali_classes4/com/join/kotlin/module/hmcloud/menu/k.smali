.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/k;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/k;->b:Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;->N(Lcom/join/kotlin/module/hmcloud/menu/HMKeyGuideFragment;Lcom/join/mgps/dto/hmcloud/HMOpConfig;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
