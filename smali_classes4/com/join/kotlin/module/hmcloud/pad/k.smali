.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

.field public final synthetic c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/k;->b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/k;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/k;->b:Lcom/join/kotlin/module/hmcloud/pad/HMOpView;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/k;->c:Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-static {v0, v1, p1, p2}, Lcom/join/kotlin/module/hmcloud/pad/HMOpView;->d(Lcom/join/kotlin/module/hmcloud/pad/HMOpView;Lcom/join/mgps/dto/hmcloud/HMKeyItem;FF)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
