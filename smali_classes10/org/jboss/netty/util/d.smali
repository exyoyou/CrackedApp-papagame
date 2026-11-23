.class public interface abstract Lorg/jboss/netty/util/d;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/jboss/netty/util/d;

.field public static final b:Lorg/jboss/netty/util/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/jboss/netty/util/d$a;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/jboss/netty/util/d$a;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/jboss/netty/util/d;->a:Lorg/jboss/netty/util/d;

    .line 7
    .line 8
    new-instance v0, Lorg/jboss/netty/util/d$b;

    .line 9
    .line 10
    invoke-direct {v0}, Lorg/jboss/netty/util/d$b;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lorg/jboss/netty/util/d;->b:Lorg/jboss/netty/util/d;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
