.class public Lcom/haima/hmcp/utils/CacheUtil$Entity;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/utils/CacheUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Entity"
.end annotation


# instance fields
.field private future:Ljava/util/concurrent/Future;

.field private listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

.field private tag:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Future;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->value:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->future:Ljava/util/concurrent/Future;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/util/concurrent/Future;Lcom/haima/hmcp/utils/CacheUtil$Listener;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->value:Ljava/lang/Object;

    .line 6
    iput-object p2, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->future:Ljava/util/concurrent/Future;

    .line 7
    iput-object p3, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/utils/CacheUtil$Entity;)Lcom/haima/hmcp/utils/CacheUtil$Listener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$002(Lcom/haima/hmcp/utils/CacheUtil$Entity;Lcom/haima/hmcp/utils/CacheUtil$Listener;)Lcom/haima/hmcp/utils/CacheUtil$Listener;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic access$102(Lcom/haima/hmcp/utils/CacheUtil$Entity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method


# virtual methods
.method public getFuture()Ljava/util/concurrent/Future;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->future:Ljava/util/concurrent/Future;

    .line 2
    .line 3
    return-object v0
.end method

.method public getListener()Lcom/haima/hmcp/utils/CacheUtil$Listener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 2
    .line 3
    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->value:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public setListener(Lcom/haima/hmcp/utils/CacheUtil$Listener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->listener:Lcom/haima/hmcp/utils/CacheUtil$Listener;

    .line 2
    .line 3
    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/utils/CacheUtil$Entity;->tag:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
