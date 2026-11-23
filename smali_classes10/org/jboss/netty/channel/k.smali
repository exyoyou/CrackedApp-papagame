.class public interface abstract Lorg/jboss/netty/channel/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/EventListener;


# static fields
.field public static final Y1:Lorg/jboss/netty/channel/k;

.field public static final Z1:Lorg/jboss/netty/channel/k;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/channel/k$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/channel/k$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/channel/k;->Y1:Lorg/jboss/netty/channel/k;

    .line 7
    .line 8
    new-instance v0, Lorg/jboss/netty/channel/k$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/jboss/netty/channel/k$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/jboss/netty/channel/k;->Z1:Lorg/jboss/netty/channel/k;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(Lorg/jboss/netty/channel/j;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
