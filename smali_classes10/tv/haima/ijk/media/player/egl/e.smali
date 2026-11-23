.class public final synthetic Ltv/haima/ijk/media/player/egl/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/e;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/e;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/e;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/e;->c:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/egl/EglRenderer;->b(Ltv/haima/ijk/media/player/egl/EglRenderer;Ljava/lang/Runnable;)V

    return-void
.end method
