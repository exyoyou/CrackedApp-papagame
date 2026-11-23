.class final Lorg/jboss/netty/channel/s$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/s;->F(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)Lorg/jboss/netty/channel/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/jboss/netty/channel/e;

.field final synthetic c:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/s$g;->b:Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/s$g;->c:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/s$g;->b:Lorg/jboss/netty/channel/e;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/s$g;->c:Ljava/lang/Throwable;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lorg/jboss/netty/channel/s;->D(Lorg/jboss/netty/channel/e;Ljava/lang/Throwable;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
