.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/x0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/x0;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/x0;->b:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/x0;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->S(Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
