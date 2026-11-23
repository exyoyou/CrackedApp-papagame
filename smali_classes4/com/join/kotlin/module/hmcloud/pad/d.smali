.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/d;->b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/d;->b:Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;->b(Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;)V

    return-void
.end method
