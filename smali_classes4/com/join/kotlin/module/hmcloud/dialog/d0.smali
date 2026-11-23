.class public final synthetic Lcom/join/kotlin/module/hmcloud/dialog/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

.field public final synthetic c:Lcom/join/android/app/mgsim/wufun/databinding/ha0;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;Lcom/join/android/app/mgsim/wufun/databinding/ha0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/d0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/dialog/d0;->c:Lcom/join/android/app/mgsim/wufun/databinding/ha0;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/d0;->b:Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/dialog/d0;->c:Lcom/join/android/app/mgsim/wufun/databinding/ha0;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, v1, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;->c(Lcom/join/kotlin/module/hmcloud/dialog/HMKeyEditDialog;Lcom/join/android/app/mgsim/wufun/databinding/ha0;I)Lkotlin/Unit;

    move-result-object p1

    return-object p1
.end method
