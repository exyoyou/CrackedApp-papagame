.class public Lcom/j256/ormlite/logger/CommonsLoggingLogBackend$CommonsLoggingLogBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackendFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonsLoggingLogBackendFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public createLogBackend(Ljava/lang/String;)Lcom/j256/ormlite/logger/LogBackend;
    .locals 1

    .line 1
    new-instance v0, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Lcom/j256/ormlite/logger/CommonsLoggingLogBackend;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method
