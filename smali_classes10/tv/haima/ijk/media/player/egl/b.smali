.class public final synthetic Ltv/haima/ijk/media/player/egl/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Ltv/haima/ijk/media/player/egl/EglRenderer;


# direct methods
.method public synthetic constructor <init>(Ltv/haima/ijk/media/player/egl/EglRenderer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltv/haima/ijk/media/player/egl/b;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/egl/b;->b:Ltv/haima/ijk/media/player/egl/EglRenderer;

    invoke-static {v0}, Ltv/haima/ijk/media/player/egl/EglRenderer;->c(Ltv/haima/ijk/media/player/egl/EglRenderer;)V

    return-void
.end method
