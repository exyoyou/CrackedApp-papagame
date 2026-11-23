.class public final synthetic Ltv/haima/ijk/media/player/egl/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;

.field public final synthetic c:Ltv/haima/ijk/media/player/egl/EglBase$Context;

.field public final synthetic d:[I


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/g;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iput-object p2, p0, Ltv/haima/ijk/media/player/egl/g;->c:Ltv/haima/ijk/media/player/egl/EglBase$Context;

    iput-object p3, p0, Ltv/haima/ijk/media/player/egl/g;->d:[I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/g;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    iget-object v1, p0, Ltv/haima/ijk/media/player/egl/g;->c:Ltv/haima/ijk/media/player/egl/EglBase$Context;

    iget-object v2, p0, Ltv/haima/ijk/media/player/egl/g;->d:[I

    invoke-static {v0, v1, v2}, Ltv/haima/ijk/media/player/egl/EglRenderer;->f(Ltv/haima/ijk/media/player/egl/EglRenderer;Ltv/haima/ijk/media/player/egl/EglBase$Context;[I)V

    return-void
.end method
