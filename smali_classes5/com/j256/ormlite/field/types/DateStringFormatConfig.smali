.class public Lcom/j256/ormlite/field/types/DateStringFormatConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final dateFormat:Ljava/text/DateFormat;

.field private final dateFormatStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/j256/ormlite/field/types/DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    .line 5
    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/j256/ormlite/field/types/DateStringFormatConfig;->dateFormat:Ljava/text/DateFormat;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public getDateFormat()Ljava/text/DateFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/types/DateStringFormatConfig;->dateFormat:Ljava/text/DateFormat;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/text/DateFormat;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ljava/text/DateFormat;

    .line 8
    .line 9
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/j256/ormlite/field/types/DateStringFormatConfig;->dateFormatStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method
