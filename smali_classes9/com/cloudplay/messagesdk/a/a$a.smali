.class Lcom/cloudplay/messagesdk/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/cloudplay/messagesdk/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/Object;

.field private b:Ljava/util/concurrent/Future;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/cloudplay/messagesdk/a/a$a;->a:Ljava/lang/Object;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/cloudplay/messagesdk/a/a$a;->b:Ljava/util/concurrent/Future;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/a$a;->b:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object v0
.end method

.method public b()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/cloudplay/messagesdk/a/a$a;->a:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method
