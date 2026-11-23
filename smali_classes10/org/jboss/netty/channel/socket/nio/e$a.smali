.class Lorg/jboss/netty/channel/socket/nio/e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lorg/jboss/netty/channel/socket/nio/b;

.field final synthetic c:Lorg/jboss/netty/channel/j;

.field final synthetic d:I

.field final synthetic e:Lorg/jboss/netty/channel/socket/nio/e;


# direct methods
.method constructor <init>(Lorg/jboss/netty/channel/socket/nio/e;Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->e:Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    iput-object p2, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->b:Lorg/jboss/netty/channel/socket/nio/b;

    .line 4
    .line 5
    iput-object p3, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->c:Lorg/jboss/netty/channel/j;

    .line 6
    .line 7
    iput p4, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->e:Lorg/jboss/netty/channel/socket/nio/e;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->b:Lorg/jboss/netty/channel/socket/nio/b;

    .line 4
    .line 5
    iget-object v2, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->c:Lorg/jboss/netty/channel/j;

    .line 6
    .line 7
    iget v3, p0, Lorg/jboss/netty/channel/socket/nio/e$a;->d:I

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2, v3}, Lorg/jboss/netty/channel/socket/nio/e;->t(Lorg/jboss/netty/channel/socket/nio/b;Lorg/jboss/netty/channel/j;I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method
