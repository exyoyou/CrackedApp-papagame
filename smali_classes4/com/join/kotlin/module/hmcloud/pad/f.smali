.class public final synthetic Lcom/join/kotlin/module/hmcloud/pad/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;


# direct methods
.method public synthetic constructor <init>(Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/pad/f;->b:Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/pad/f;->b:Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;

    invoke-static {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->a(Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;)V

    return-void
.end method
