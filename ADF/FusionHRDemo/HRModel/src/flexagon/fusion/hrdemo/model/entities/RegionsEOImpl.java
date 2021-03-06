package flexagon.fusion.hrdemo.model.entities;

import java.math.BigDecimal;

import oracle.jbo.Key;
import oracle.jbo.RowIterator;
import oracle.jbo.server.AttributeDefImpl;
import oracle.jbo.server.EntityDefImpl;
import oracle.jbo.server.EntityImpl;
// ---------------------------------------------------------------------
// ---    File generated by Oracle ADF Business Components Design Time.
// ---    Sat Sep 20 17:26:03 CDT 2014
// ---    Custom code may be added to this class.
// ---    Warning: Do not modify method signatures of generated methods.
// ---------------------------------------------------------------------
public class RegionsEOImpl
  extends EntityImpl
{
  /**
   * AttributesEnum: generated enum for identifying attributes and accessors. DO NOT MODIFY.
   */
  public enum AttributesEnum
  {
    RegionId,
    RegionName,
    Countries;
    private static AttributesEnum[] vals = null;
    private static final int firstIndex = 0;

    public int index()
    {
      return AttributesEnum.firstIndex() + ordinal();
    }

    public static final int firstIndex()
    {
      return firstIndex;
    }

    public static int count()
    {
      return AttributesEnum.firstIndex() + AttributesEnum.staticValues().length;
    }

    public static final AttributesEnum[] staticValues()
    {
      if (vals == null)
      {
        vals = AttributesEnum.values();
      }
      return vals;
    }
  }

  public static final int REGIONID = AttributesEnum.RegionId.index();
  public static final int REGIONNAME = AttributesEnum.RegionName.index();
  public static final int COUNTRIES = AttributesEnum.Countries.index();

  /**
   * This is the default constructor (do not remove).
   */
  public RegionsEOImpl()
  {
  }

  /**
   * @return the definition object for this instance class.
   */
  public static synchronized EntityDefImpl getDefinitionObject()
  {
    return EntityDefImpl.findDefObject("flexagon.fusion.hrdemo.model.entities.RegionsEO");
  }

  /**
   * Gets the attribute value for RegionId, using the alias name RegionId.
   * @return the value of RegionId
   */
  public BigDecimal getRegionId()
  {
    return (BigDecimal) getAttributeInternal(REGIONID);
  }

  /**
   * Sets <code>value</code> as the attribute value for RegionId.
   * @param value value to set the RegionId
   */
  public void setRegionId(BigDecimal value)
  {
    setAttributeInternal(REGIONID, value);
  }

  /**
   * Gets the attribute value for RegionName, using the alias name RegionName.
   * @return the value of RegionName
   */
  public String getRegionName()
  {
    return (String) getAttributeInternal(REGIONNAME);
  }

  /**
   * Sets <code>value</code> as the attribute value for RegionName.
   * @param value value to set the RegionName
   */
  public void setRegionName(String value)
  {
    setAttributeInternal(REGIONNAME, value);
  }

  /**
   * @return the associated entity oracle.jbo.RowIterator.
   */
  public RowIterator getCountries()
  {
    return (RowIterator) getAttributeInternal(COUNTRIES);
  }

  /**
   * @param regionId key constituent

   * @return a Key object based on given key constituents.
   */
  public static Key createPrimaryKey(BigDecimal regionId)
  {
    return new Key(new Object[] { regionId });
  }


}

