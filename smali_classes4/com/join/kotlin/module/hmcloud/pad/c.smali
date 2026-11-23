.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;

.field public final synthetic c:Lcom/join/android/app/mgsim/wufun/databinding/da0;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/c;->b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;

    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/pad/c;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/c;->b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;

    iget-object v1, p0, Lcom/join/kotlin/module/hmcloud/pad/c;->c:Lcom/join/android/app/mgsim/wufun/databinding/da0;

    invoke-static {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;->b(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;Lcom/join/android/app/mgsim/wufun/databinding/da0;)V

    return-void
.end method
