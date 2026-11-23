.class public Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/j256/ormlite/logger/LogBackendFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/j256/ormlite/logger/NullLogBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NullLogBackendFactory"
.end annotation


# static fields
.field private static final singleton:Lcom/j256/ormlite/logger/NullLogBackend;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/j256/ormlite/logger/NullLogBackend;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/j256/ormlite/logger/NullLogBackend;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;->singleton:Lcom/j256/ormlite/logger/NullLogBackend;

    .line 7
    .line 8
    return-void
.end method

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
    .locals 0

    .line 1
    sget-object p1, Lcom/j256/ormlite/logger/NullLogBackend$NullLogBackendFactory;->singleton:Lcom/j256/ormlite/logger/NullLogBackend;

    .line 2
    .line 3
    return-object p1
.end method
