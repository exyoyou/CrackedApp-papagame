.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;


# direct methods
.method public synthetic constructor <init>(Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/kotlin/module/hmcloud/pad/HMOpView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/n;->b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/n;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/n;->b:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/n;->c:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->g(Lcom/join/mgps/dto/hmcloud/HMKeyItem;Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Z)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
