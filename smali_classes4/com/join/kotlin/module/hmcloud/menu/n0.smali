.class public final synthetic Lcom/join/kotlin/module/hmcloud/menu/n0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/android/app/mgsim/wufun/databinding/z90;

.field public final synthetic c:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/n0;->b:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/n0;->c:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/n0;->b:Lcom/join/android/app/mgsim/wufun/databinding/z90;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/menu/n0;->c:Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;

    check-cast p1, Lcom/join/mgps/dto/hmcloud/HMKeyItem;

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;->b0(Lcom/join/android/app/mgsim/wufun/databinding/z90;Lcom/join/kotlin/module/hmcloud/menu/HMOpEditFragment;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
